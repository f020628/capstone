using System.Collections;
using System.Collections.Generic;
using UnityEngine;
public class RangeDetector : MonoBehaviour
{
    public ArrowTower arrowTowerScript;

    private void Start()
    {
        // Find the ArrowTower script on the parent object
        arrowTowerScript = GetComponentInParent<ArrowTower>();
        if (arrowTowerScript == null)
        {
            Debug.LogError("ArrowTower script not found on the parent object!");
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        // Call the ArrowTower's OnTriggerEnter method
        arrowTowerScript.OnTriggerEnter(other);

    }

    private void OnTriggerExit(Collider other)
    {
        // Call the ArrowTower's OnTriggerExit method
        arrowTowerScript.OnTriggerExit(other);

    }
}
