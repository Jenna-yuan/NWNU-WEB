package com.nwnu.Chart;

import java.awt.Color;
import java.awt.Font;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import javax.swing.JFrame;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartPanel;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.labels.StandardPieSectionLabelGenerator;
import org.jfree.chart.plot.PiePlot;
import org.jfree.data.general.DefaultPieDataset;

public class PieChartDemo {
	public static void main(String[] args) {

		DefaultPieDataset data = getDataSet();
		JFreeChart chart = ChartFactory.createPieChart3D("体育学院疫情信息填报数据统计", data, true, false, false);

		// 设置百分比

		chart.setBackgroundPaint(new Color(10, 50, 100));
		PiePlot pieplot = (PiePlot) chart.getPlot();
		DecimalFormat df = new DecimalFormat("0.00%");// 获得一个DecimalFormat对象，主要是设置小数问题
		NumberFormat nf = NumberFormat.getNumberInstance();// 获得一个NumberFormat对象
		StandardPieSectionLabelGenerator sp1 = new StandardPieSectionLabelGenerator(

				"{0}  {2}", nf, df);// 获得StandardPieSectionLabelGenerator对象

		pieplot.setLabelGenerator(sp1);// 设置饼图显示百分比

		// 没有数据的时候显示的内容

		pieplot.setNoDataMessage("无数据显示");
		pieplot.setCircular(false);
		pieplot.setLabelGap(0.02D);
		pieplot.setIgnoreNullValues(true);// 设置不显示空值
		pieplot.setIgnoreZeroValues(true);// 设置不显示负值
		chart.getTitle().setFont(new Font("宋体", Font.BOLD, 20));// 设置标题字体
		chart.getTitle().setBackgroundPaint(Color.white);
		PiePlot piePlot = (PiePlot) chart.getPlot();// 获取图表区域对象
		piePlot.setBackgroundPaint(new Color(10, 50, 100));
		piePlot.setLabelFont(new Font("宋体", Font.BOLD, 20));// 解决乱码
		piePlot.setLabelBackgroundPaint(Color.white);
		chart.getLegend().setItemFont(new Font("黑体", Font.BOLD, 20));
		chart.getLegend().setBackgroundPaint(Color.white);
		ChartPanel chartPanel = new ChartPanel(chart, true);
		JFrame frame = new JFrame("体育学院疫情信息填报数据统计");
		frame.add(chartPanel); // 添加柱形图
		frame.setBounds(0, 0, 900, 600);
		Color color = new Color(10, 50, 100);
		frame.getContentPane().setBackground(color);
		frame.setVisible(true);
	}

	private static DefaultPieDataset getDataSet() {
		DefaultPieDataset dataset = new DefaultPieDataset();
		dataset.setValue("提交人数", 220);
		dataset.setValue("未提交人数", 10);
		return dataset;
	}
}
