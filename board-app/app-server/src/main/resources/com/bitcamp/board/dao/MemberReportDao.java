package com.bitcamp.board.dao;

import java.util.Map;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberReportDao {


  int insertReport(Map<String, Object> reportMap);



}














