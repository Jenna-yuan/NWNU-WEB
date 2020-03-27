package com.nwnu.Chart;

import java.awt.Color;
import java.awt.Container;
import java.awt.Font;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartPanel;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.axis.CategoryAxis;
import org.jfree.chart.axis.ValueAxis;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.CategoryDataset;
import org.jfree.data.category.DefaultCategoryDataset;
import java.awt.GridLayout;

import javax.swing.JFrame;

public class BarChart2 {
	ChartPanel frame1;

	public BarChart2() {
		CategoryDataset dataset = getDataSet();// 将获得的数据传递给CategoryDataset类的对象
		JFreeChart chart1 = ChartFactory.createBarChart3D("当天各个学院有疫情疑似症状的人数统计", // 图表标题
				"学院", // 目录轴的显示标签
				"人数", // 数值轴的显示标签
				dataset, // 数据集
				PlotOrientation.VERTICAL, // 图表方向：水平、垂直
				true, // 是否显示图例(对于简单的柱状图必须是false)
				false, // 是否生成工具
				false // 是否生成URL链接
				
		);
		chart1.setBackgroundPaint(new Color(10, 50, 100));
		CategoryPlot plot = chart1.getCategoryPlot();// 获取图表区域对象
		plot.setBackgroundPaint(new Color(10, 50, 100)); 		
		CategoryAxis domainAxis = plot.getDomainAxis(); // 水平底部列表
		domainAxis.setLabelFont(new Font("黑体", Font.BOLD, 14)); // 水平底部标题
		domainAxis.setTickLabelFont(new Font("宋体", Font.BOLD, 12)); // 垂直标题	
		domainAxis.setLabelPaint(Color.white);
		domainAxis.setTickLabelPaint(Color.white);	
		ValueAxis rangeAxis = plot.getRangeAxis();// 获取柱状
		rangeAxis.setLabelFont(new Font("黑体", Font.BOLD, 15));
		rangeAxis.setLabelPaint(Color.white);// 设置颜色
		chart1.getLegend().setItemFont(new Font("黑体", Font.BOLD, 15));
		chart1.getTitle().setFont(new Font("宋体", Font.BOLD, 20));// 设置标题字体
		chart1.getLegend().setBackgroundPaint(Color.white);
		chart1.getTitle().setBackgroundPaint(Color.white);// 设置颜色	
		frame1 = new ChartPanel(chart1, true); // 这里也可以用chartFrame,可以直接生成一个独立的Frame
		frame1.setVisible(true);
	}

	private static CategoryDataset getDataSet() {
		DefaultCategoryDataset dataset = new DefaultCategoryDataset();
		dataset.addValue(1, "计算机科学与工程学院", "计算机科学与工程学院");// 数据1
		dataset.addValue(1, "体育学院", "体育学院");// 数据2
		dataset.addValue(1, "美术学院", "美术学院");// 数据3
		dataset.addValue(0, "音乐学院", "音乐学院");// 数据4
		dataset.addValue(0, "哲学院", "哲学院");// 数据1
		dataset.addValue(0, "马克思主义学院", "马克思主义学院");// 数据2
		dataset.addValue(0, "外国语学院", "外国语学院");// 数据3
		return dataset;
	}

	public ChartPanel getChartPanel() {
		return frame1;

	}

	public static void main(String args[]) {
		JFrame frame = new JFrame("当天各个学院有疫情疑似症状的人数统计");
		frame.setLayout(new GridLayout(2, 2, 20, 20));
		frame.add(new BarChart2().getChartPanel()); // 添加柱形图
		frame.setBounds(100, 100, 900, 600);	
		Color color=new Color(10,50,100);
		frame.getContentPane().setBackground(color);
		frame.setVisible(true);
	}
	private static Container getLayeredPane() {
		return null;
	}
}
