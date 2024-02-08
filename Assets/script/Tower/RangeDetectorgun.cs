using System.Collections;
using System.Collections.Generic;
using UnityEngine;
public class RangeDetectorgun : MonoBehaviour
{
    public MachineGun GunScript;

    private void Start()
    {
        // Find the ArrowTower script on the parent object
        GunScript = GetComponentInParent<MachineGun>();
        if (GunScript == null)
        {
            Debug.LogError("Tower script not found on the parent object!");
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        // Call the ArrowTower's OnTriggerEnter method
        GunScript.OnTriggerEnter(other);

    }

    private void OnTriggerExit(Collider other)
    {
        // Call the ArrowTower's OnTriggerExit method
        GunScript.OnTriggerExit(other);

    }
}
