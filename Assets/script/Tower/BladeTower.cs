using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BladeTower : MonoBehaviour
{
    public Transform body; // Assign the body part of the tower here in the inspector
    public float rotationSpeed = 45.0f; // Rotation speed in degrees per second
    // Start is called before the first frame update
    void Start()
    {
        
    }



    // Update is called once per frame
    void Update()
    {
        // Rotate the body around the y-axis at the specified speed
        body.Rotate(0, rotationSpeed * Time.deltaTime, 0);
    }
}
