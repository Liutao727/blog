package com.autil;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

public class count {
	/**
	 * 以行为单位读取文件，常用于读面向行的格式化文件
	 */
	
	public static List list =new ArrayList();
	public static void count(String fileName) {
        fileName="D:/domian/"+fileName+".txt";
		File file = new File(fileName);
		BufferedReader reader = null;
		try {
			System.out.println("以行为单位读取文件内容，一次读一整行：");
			reader = new BufferedReader(new FileReader(file));
			String tempString = null;
			int line = 1;
			// 一次读入一行，直到读入null为文件结束
			while ((tempString = reader.readLine()) != null) {
				// 显示行号
				if(cigBoo(tempString)){
					System.out.println("line " + line + ": " + tempString);
					line++;
				}
			}
			reader.close();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (reader != null) {
				try {
					reader.close();
				} catch (IOException e1) {
				}
			}
		}
	}
    ////條件
	public static boolean cigBoo(String domian){ 
		Pattern reg = Pattern.compile("^[A-Za-z]+$");
		boolean isok=false;
		String domians="";
		String domianC[]={};
		if(domian!=null&&!domian.equals("")&&domian.length()>2){
			domians=domian.trim().substring(1,domian.length()-1);
			domianC=domians.split("\\."); 
			if(domianC.length>1){
			//	System.out.println(reg.matches(domianC[0]));
				if(domianC[0].length()==4&&("com".equals(domianC[1])||"cn".equals(domianC[1]))&&reg.matcher(domianC[0]).matches()){
					/////com.cn域名
					isok=true;
					list.add(domians);
				}
			}
			
		} 
		
		
		return isok;
	}
	
	public static void write(String name) {
		 
		BufferedWriter writer = null;
		try {
			writer = new BufferedWriter(new FileWriter("D:/domian/"+name+"_out.txt"));
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		try {
			  for (int i = 0; i < list.size(); i++) {
				    writer.append((CharSequence) list.get(i));
					writer.newLine();// 换行
					writer.flush();// 需要及时清掉流的缓冲区，万一文件过大就有可能无法写入了
			 }
				
			 
			 
			writer.close();
			System.out.println("文件写入完成...");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public static void main(String args[]) {
		String name="20170225";
		count(name);
		write(name);
	}

}
