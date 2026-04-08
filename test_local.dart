import 'package:sarno_client/api.dart';

void main() async {
  final client = ApiClient(basePath: 'http://localhost:8090');

  print('=== Health ===');
  final healthApi = HealthApi(client);
  try {
    final health = await healthApi.getHealth();
    print('Health: ${health?.data}');
  } catch (e) {
    print('Health FAILED: $e');
  }

  print('\n=== Users ===');
  final usersApi = UsersApi(client);
  try {
    final users = await usersApi.listUsers();
    print('Users: ${users?.data?.users}');
  } catch (e) {
    print('Users FAILED: $e');
  }

  print('\n=== Organizations ===');
  final orgsApi = OrganizationsApi(client);
  try {
    final orgs = await orgsApi.listOrganizations();
    print('Orgs: ${orgs?.data}');
  } catch (e) {
    print('Orgs FAILED: $e');
  }

  print('\n=== Projects ===');
  final projectsApi = ProjectsApi(client);
  try {
    final projects = await projectsApi.listProjects();
    print('Projects: ${projects?.data}');
  } catch (e) {
    print('Projects FAILED: $e');
  }

  print('\n=== Tasks ===');
  final tasksApi = TasksApi(client);
  try {
    final tasks = await tasksApi.listTasks();
    print('Tasks: ${tasks?.data?.tasks}');
  } catch (e) {
    print('Tasks FAILED: $e');
  }

  print('\n=== Operators ===');
  final opsApi = OperatorsApi(client);
  try {
    final ops = await opsApi.listOperators();
    print('Operators: total=${ops?.data?.total}');
  } catch (e) {
    print('Operators FAILED: $e');
  }

  print('\n=== Runtimes ===');
  final rtApi = RuntimesApi(client);
  try {
    final rts = await rtApi.listRuntimes();
    print('Runtimes: total=${rts?.data?.total}');
  } catch (e) {
    print('Runtimes FAILED: $e');
  }

  print('\n=== Create Org → Team → Project → Folder flow ===');
  try {
    // Create org
    final orgResp = await orgsApi.createOrganization(CreateOrgRequest(
      slug: 'test-dart-org',
      displayName: 'Test Dart Org',
    ));
    print('Created org: ${orgResp?.data}');

    // Create team in org
    final teamsApi = TeamsApi(client);
    final teamResp = await teamsApi.createTeam('test-dart-org', CreateTeamRequest(
      slug: 'dev-team',
      displayName: 'Dev Team',
    ));
    print('Created team: ${teamResp?.data}');

    // Create project
    final projResp = await projectsApi.createProject(CreateProjectRequest(
      owner: 'org:test-dart-org',
      slug: 'dart-test-project',
      displayName: 'Dart Test Project',
      visibility: Visibility.private,
    ));
    print('Created project: ${projResp?.data}');

    // List projects
    final projs = await projectsApi.listProjects();
    print('All projects: ${projs?.data}');

    // Create folder in project (need project id from response)
    // The response is dynamic, extract id
    print('\n=== Cleanup ===');
    // Delete project
    await projectsApi.deleteProject('org:test-dart-org', 'dart-test-project');
    print('Deleted project');
    // Delete team
    await teamsApi.deleteTeam('test-dart-org', 'dev-team');
    print('Deleted team');
    // Delete org
    await orgsApi.deleteOrganization('test-dart-org');
    print('Deleted org');
  } catch (e) {
    print('Flow FAILED: $e');
  }

  print('\n=== Done ===');
}
