using System.Collections;
using System.Collections.Generic;
using UnityEngine;
public class RangeDetectorpulse : MonoBehaviour
{
    public pulse_generator TowerScript;

    private void Start()
    {
        // Find the ArrowTower script on the parent object
        TowerScript = GetComponentInParent<pulse_generator>();
        if (TowerScript == null)
        {
            Debug.LogError("Tower script not found on the parent object!");
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        // Call the ArrowTower's OnTriggerEnter method
        TowerScript.OnTriggerEnter(other);

    }

    private void OnTriggerExit(Collider other)
    {
        // Call the ArrowTower's OnTriggerExit method
        TowerScript.OnTriggerExit(other);

    }
}
