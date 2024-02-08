using System.Collections;
using System.Collections.Generic;
using UnityEngine;
public class RangeDetectorcannon : MonoBehaviour
{
    public BombTower bombTowerScript;

    private void Start()
    {
        // Find the ArrowTower script on the parent object
        bombTowerScript = GetComponentInParent<BombTower>();
        if (bombTowerScript == null)
        {
            Debug.LogError("BTower script not found on the parent object!");
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        // Call the ArrowTower's OnTriggerEnter method
        bombTowerScript.OnTriggerEnter(other);

    }

    private void OnTriggerExit(Collider other)
    {
        // Call the ArrowTower's OnTriggerExit method
        bombTowerScript.OnTriggerExit(other);

    }
}
