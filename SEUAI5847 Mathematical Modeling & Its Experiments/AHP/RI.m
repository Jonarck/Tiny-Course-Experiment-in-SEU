function RI()
%RI计算函数
%完成者：58119125蒋卓洋
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%循环层1：计算3—30每一阶方正RI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for n=3:30
    %1.1.初始化特征值和
    eigenvalue_sum = 0;
    %1.2.进入循环层2，随机创建1000个元素为1~9及其倒数的该阶矩阵，计算1000个最大特征值的和
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %循环层2：随机创建1000个该阶矩阵计算1000个最大特征值的和
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    for count=1:1000
        %2.1.随机生成矩阵
        %（1）定义矩阵元素随机取值的取值范围
        enum = [9,8,7,6,5,4,3,2,1,1/2,1/3,1/4,1/5,1/6,1/7,1/8,1/9]; 
        %（2）以正互反矩阵的形式生成矩阵
        for i = 1:n         
           for j = i+1:n
               % 矩阵的上三角元素
               A(i,j) = enum(ceil(17*rand(1)));    
               % 矩阵的下三角各元素为上三角各元素倒数
               A(j,i) = 1/A(i,j);          
               %矩阵对角线为1
               A(i,i) = 1;            
           end
        end
        %2.2矩阵最大特征值迭代求和
        eigenvalue_sum = eigenvalue_sum + max(eig(A));
    end
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %1.3.平均数
    eigenvalue_max =  eigenvalue_sum / 1000;
    %1.4.计算RI
    RI = (eigenvalue_max - n) / (n - 1);
    %1.5.输出该阶RI
    disp(['第',num2str(n),'阶RI为:']);
    disp(RI);
end
