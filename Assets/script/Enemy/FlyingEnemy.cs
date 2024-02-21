using UnityEngine;

public class FlyingEnemy : MonoBehaviour
{
    public float desiredHeightAboveTerrain = 5f; // 飞行敌人希望保持在地面之上的高度
    public LayerMask terrainLayer; // 用于Raycast的地形层，确保在LayerMask中只包含Terrain层

    void Update()
    {
        AdjustHeight();
    }

    void AdjustHeight()
    {
        // 向下发射射线，从飞行敌人的当前位置开始
        RaycastHit hit;
        if (Physics.Raycast(transform.position, Vector3.down, out hit, Mathf.Infinity, terrainLayer))
        {
            // 计算新的高度，使其保持在地面之上desiredHeightAboveTerrain指定的高度
            float desiredY = hit.point.y + desiredHeightAboveTerrain;
            // 更新飞行敌人的位置
            transform.position = new Vector3(transform.position.x, desiredY, transform.position.z);
        }
    }
}
