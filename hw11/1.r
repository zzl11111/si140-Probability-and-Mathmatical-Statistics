install.packages("igraph",lib="C:/Users/zzl/AppData/Local/R/win-library/4.2")
install.packages("readx1",lib="C:/Users/zzl/AppData/Local/R/win-library/4.2")

#设定工作路径
path="C:\\Users\\zzl\\Desktop\\si140\\hw11"
setwd(path)
library(igraph,lib="C:/Users/zzl/AppData/Local/R/win-library/4.2")

library(readxl,lib="C:/Users/zzl/AppData/Local/R/win-library/4.2")

#读取数据
edges = read_excel("edges.xlsx")
vertex = read_excel("vertex.xlsx")

#图像布局
par(mfrow = c(1,2))
#无向网络
#first =  graph_from_data_frame(edges,FALSE,vertex)
first =  graph_from_data_frame(edges.directed = FALSE,vertices = vertex)
#查看边的数量
E(first)
ecount(first)
#查看节点数量
V(first)
vcount(first)
#描述统计
summary(first)
#获取边列表
get.edgelist(first)
#判断是否是加权网络
is.weighted(first)
#查看权重
E(first)$weight
#度
degree(first)
#随机种子
set.seed(1)
plot(first,layout = layout.circle,edge.color = "green",
     vertex.color = 2,
     edge.width = E(first)$weight,
     main = "无向网络"，
     vertex.size = 3*degree(first),#节点面积取决于度的大小
     vertex.label.cex = 0.5*degree(first))