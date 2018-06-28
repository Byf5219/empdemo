package com.neuedu.service;

import com.neuedu.entity.Dept;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DeptService {
    /**
     * 查询所有dept
     * @return
     */
    List<Dept> listDept();

    /**
     * 根据id查询dept
     * @param id
     * @return Dept
     */
    Dept selsctDeptById(int id);

    /**
     *根据id数组删除dept
     * @param ids
     * @return 影响行数
     */
    Integer deleteDeptById(int[] ids);

    /**
     * 添加dept
     * @param dept
     * @return 影响行数
     */
    int savaDept(Dept dept);

    /**
     * 根据id修改dept
     * @param dept
     * @return 影响行数
     */
    int updateDept(@Param("dept") Dept dept);
}
