using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class BombTower : MonoBehaviour
{
    public GameObject bombPrefab; // Assign your bomb prefab in the inspector
    public Transform shootPoint; // Assign the point from which bombs will be launched
    public Transform frontpoint; 
    public Transform body;
    public float shootingRate = 2f; // Time between shots in seconds
    public float launchAngle = 45.0f; // Launch angle in degrees

    private List<GameObject> enemiesInRange;
    private float shootingCooldown;

    void Start()
    {
        enemiesInRange = new List<GameObject>();
         // Get the Range object's Collider and add trigger event listeners
        Collider rangeCollider = transform.Find("Range").GetComponent<Collider>();
        if (rangeCollider == null)
        {
            Debug.LogError("Range collider not found on the child object!");
        }
        else
        {
            rangeCollider.isTrigger = true; // Ensure the collider is set to trigger
        }

        shootingCooldown = 0f;
    }

    void Update()
    {
        shootingCooldown -= Time.deltaTime;
        enemiesInRange.RemoveAll(item => item == null); // Clean up the list from any null references
        if (enemiesInRange.Count > 0 && shootingCooldown <= 0f)
        {
            ShootAtTarget(enemiesInRange[0]); // Shoot the first enemy in range
            shootingCooldown = shootingRate;
        }
        
    }

    public void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Enemy")) // Make sure your enemies have the tag "Enemy"
        {
            enemiesInRange.Add(other.gameObject);
            Debug.Log(enemiesInRange.Count + " enemies in range");
        }
       
    }

    // OnTriggerExit is also moved to a separate component
    public void OnTriggerExit(Collider other)
    {
        if (other.gameObject.CompareTag("Enemy"))
        {
            enemiesInRange.Remove(other.gameObject);
        }
        Debug.Log(enemiesInRange.Count + " enemies in range");
    }

    private void ShootAtTarget(GameObject enemy)
    {
        Transform target = enemy.transform;
        if (target != null)
        {
        Vector3 toTarget = target.position - shootPoint.position;
        // Calculate the x and y distance to target
        float toTargetDist = Vector2.Distance(new Vector2(shootPoint.position.x, shootPoint.position.z), new Vector2(target.position.x, target.position.z));
        float toTargetHeight = target.position.y - shootPoint.position.y;
        
        // Calculate the initial speed required to land the bomb on target
        float initialVelocity = Mathf.Sqrt(toTargetDist * Physics.gravity.magnitude / Mathf.Sin(2 * launchAngle * Mathf.Deg2Rad));
        
        // Decompose the initial velocity into its vertical and horizontal components
        Vector3 velocity = new Vector3(0, initialVelocity * Mathf.Sin(launchAngle * Mathf.Deg2Rad), initialVelocity * Mathf.Cos(launchAngle * Mathf.Deg2Rad));
        
        // Rotate our velocity to match the direction from shootPoint to target
        float angleBetweenObjects = Vector3.SignedAngle(Vector3.forward, toTarget, Vector3.up);
        velocity = Quaternion.AngleAxis(angleBetweenObjects, Vector3.up) * velocity;

        // Create bomb and set its velocity
        GameObject bombInstance = Instantiate(bombPrefab, shootPoint.position, Quaternion.identity);
        Rigidbody bombRigidbody = bombInstance.GetComponent<Rigidbody>();
        bombRigidbody.velocity = velocity;
        }
    }
/* void RotateTowards(Transform target)
{
    // Calculate the direction from shootpoint to target in the x-z plane.
    Vector3 targetDir = target.position - shootPoint.position;
    targetDir.y = 0; // Ensure the direction is purely horizontal.

    // Calculate the current forward direction from frontpoint to shootpoint in the x-z plane.
    Vector3 forwardDir = frontpoint.position - shootPoint.position;
    forwardDir.y = 0; // Ensure the direction is purely horizontal.

    // Calculate a rotation from the current forward direction to the target direction.
    Quaternion toRotation = Quaternion.LookRotation(targetDir, Vector3.up);

    // Apply this rotation to the body.
    // Since we want the body to rotate around its y-axis, we convert the rotation to local space.
    Quaternion localToRotation = Quaternion.Inverse(body.rotation) * toRotation;
    float yRotation = localToRotation.eulerAngles.y;

    // Rotate the body around its local y-axis
    body.Rotate(0, yRotation, 0);
} */


/*     bool IsAimedAtTarget(Transform target)
    {
        Vector3 targetDirectionFlat = target.position - body.position;
        targetDirectionFlat.y = 0; // Ignore y-axis for the aiming check

        // Check if the forward direction of the body is aimed close enough to the target direction
        float dotProduct = Vector3.Dot(body.forward, targetDirectionFlat.normalized);
        return dotProduct > 0.99f; // Adjust threshold as necessary for accuracy
    }
        private GameObject GetClosestEnemy()
    {
        GameObject closest = null;
        float closestDistanceSqr = Mathf.Infinity;
        Vector3 currentPosition = transform.position;
        foreach(GameObject potentialTarget in enemiesInRange)
        {
            Vector3 directionToTarget = potentialTarget.transform.position - currentPosition;
            float dSqrToTarget = directionToTarget.sqrMagnitude;
            if(dSqrToTarget < closestDistanceSqr)
            {
                closestDistanceSqr = dSqrToTarget;
                closest = potentialTarget;
            }
        }
        return closest;
    } */
}