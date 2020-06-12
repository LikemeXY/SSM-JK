package com.edu.mapper;

import com.edu.bean.MoveBook;
import com.edu.bean.MoveBookExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MoveBookMapper {
    long countByExample(MoveBookExample example);

    int deleteByExample(MoveBookExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(MoveBook record);

    int insertSelective(MoveBook record);

    List<MoveBook> selectByExample(MoveBookExample example);

    MoveBook selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") MoveBook record, @Param("example") MoveBookExample example);

    int updateByExample(@Param("record") MoveBook record, @Param("example") MoveBookExample example);

    int updateByPrimaryKeySelective(MoveBook record);

    int updateByPrimaryKey(MoveBook record);
}