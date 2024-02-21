using UnityEngine;
using UnityEngine.AI;

public class EnemyRoute : MonoBehaviour
{
    public Transform[] waypoints; // Assign waypoints in the inspector
    private NavMeshAgent agent;
    private int waypointIndex = 0;

    private void Start()
    {
        agent = GetComponent<NavMeshAgent>();
        if (agent == null)
        {
            Debug.LogError("NavMeshAgent component not found!", this);
            return; // 提前退出，避免后续调用导致的NullReferenceException
        }
        if (waypoints.Length > 0)
        {
            MoveToNextWaypoint();
        }
    }

    private void Update()
    {
        // Check if the enemy has reached its current waypoint and move to the next one
        if (waypoints.Length > 0 && !agent.pathPending && agent.remainingDistance < 0.5f)
        {
            MoveToNextWaypoint();
        }
    }

    void MoveToNextWaypoint()
    {
         if (waypoints == null || waypoints.Length == 0)
        {
            Debug.LogWarning("No waypoints set for EnemyRoute", this);
            return; // 提前退出，避免尝试访问空数组
        }
        // Set the agent to go to the currently selected destination
        agent.destination = waypoints[waypointIndex].position;

        // Choose the next waypoint in the array as the destination,
        // cycling to the start if necessary
        waypointIndex = (waypointIndex + 1) % waypoints.Length;
    }

    // Added method to set waypoints from the EnemySpawner
   public void SetWaypoints(Transform[] newWaypoints)
    {
        if (agent == null)
        {
            agent = GetComponent<NavMeshAgent>();
            if (agent == null)
            {
                Debug.LogError("NavMeshAgent component not found!", this);
                return;
            }
        }

        waypoints = newWaypoints;
        waypointIndex = 0; // 重置路径点索引

        if (waypoints != null && waypoints.Length > 0)
        {
            // 确保在设置路径点后，敌人从第一个路径点开始移动
            agent.destination = waypoints[waypointIndex].position;
        }
    }

}
