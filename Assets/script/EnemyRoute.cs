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
        MoveToNextWaypoint();
    }

    private void Update()
    {
        // Check if the enemy has reached its current waypoint and move to the next one
        if (!agent.pathPending && agent.remainingDistance < 0.5f)
        {
            MoveToNextWaypoint();
        }
    }

    void MoveToNextWaypoint()
    {
        if (waypoints.Length == 0) return;

        // Set the agent to go to the currently selected destination
        agent.destination = waypoints[waypointIndex].position;

        // Choose the next waypoint in the array as the destination,
        // cycling to the start if necessary
        waypointIndex = (waypointIndex + 1) % waypoints.Length;
    }
}
