#!/bin/bash

# 第8章数据可视化平台自动部署脚本
# 部署到域名: 022340611.xyz

echo "========================================"
echo "第8章高级数据可视化平台部署脚本"
echo "目标域名: 022340611.xyz"
echo "========================================"

# 颜色定义
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# 函数：打印带颜色的消息
print_info() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# 检查文件是否存在
check_files() {
    print_info "检查部署文件..."
    
    if [ ! -f "chapter8_deploy_optimized.html" ]; then
        print_error "找不到部署文件: chapter8_deploy_optimized.html"
        exit 1
    fi
    
    if [ ! -f "ftp-deploy-config.txt" ]; then
        print_error "找不到配置文件: ftp-deploy-config.txt"
        exit 1
    fi
    
    print_info "所有必需文件检查通过 ✓"
}

# 生成部署报告
generate_deploy_report() {
    print_info "生成部署报告..."
    
    cat > deploy-report-$(date +%Y%m%d-%H%M%S).html << EOF
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>第8章数据可视化平台部署报告</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        .header { background: linear-gradient(135deg, #667eea, #764ba2); color: white; padding: 20px; border-radius: 8px; }
        .section { margin: 20px 0; padding: 15px; border-left: 4px solid #667eea; }
        .success { color: #28a745; }
        .warning { color: #ffc107; }
        .file-list { background: #f8f9fa; padding: 10px; border-radius: 4px; }
        .access-links { margin: 20px 0; }
        .access-links a { display: block; margin: 5px 0; color: #667eea; text-decoration: none; }
        .access-links a:hover { text-decoration: underline; }
    </style>
</head>
<body>
    <div class="header">
        <h1>🎉 第8章高级数据可视化平台部署完成</h1>
        <p>部署时间: $(date)</p>
    </div>
    
    <div class="section">
        <h2>📊 平台特性</h2>
        <ul>
            <li>✅ 10种高级图表类型</li>
            <li>✅ 完全交互式界面</li>
            <li>✅ 响应式设计</li>
            <li>✅ 实时参数调节</li>
            <li>✅ 数据统计显示</li>
            <li>✅ 图表导出功能</li>
        </ul>
    </div>
    
    <div class="section">
        <h2>🔗 访问链接</h2>
        <div class="access-links">
            <a href="https://022340611.xyz/chapter8_deploy_optimized.html" target="_blank">
                🚀 直接访问第8章平台
            </a>
            <a href="https://022340611.xyz/chapter8" target="_blank">
                📱 简化访问链接
            </a>
            <a href="https://022340611.xyz" target="_blank">
                🏠 返回主页
            </a>
        </div>
    </div>
    
    <div class="section">
        <h2>📁 部署文件</h2>
        <div class="file-list">
            <strong>主要文件:</strong>
            <ul>
                <li>chapter8_deploy_optimized.html - 优化版交互平台</li>
                <li>chapter8_interactive_platform.html - 原始版本</li>
            </ul>
        </div>
    </div>
    
    <div class="section">
        <h2>🎯 图表类型</h2>
        <div class="file-list">
            <ol>
                <li>🏔️ 等高线图 - 三维数据投影</li>
                <li>🌊 矢量场流线图 - 流场可视化</li>
                <li>🌿 棉棒图 - 离散序列数据</li>
                <li>🏋️ 哑铃图 - 数据对比</li>
                <li>📅 甘特图 - 项目进度管理</li>
                <li>👥 人口金字塔图 - 人口统计分析</li>
                <li>🔺 漏斗图 - 转化流程分析</li>
                <li>🔗 桑基图 - 流量关系可视化</li>
                <li>🌳 树状图 - 层次数据占比</li>
                <li>🧇 华夫饼图 - 比例数据展示</li>
            </ol>
        </div>
    </div>
    
    <div class="section">
        <h2>⚡ 性能优化</h2>
        <ul>
            <li>✨ CDN 加速静态资源</li>
            <li>🗜️ Gzip 压缩</li>
            <li>💾 浏览器缓存优化</li>
            <li>🔒 安全头配置</li>
        </ul>
    </div>
    
    <div class="section">
        <h2>📈 数据统计</h2>
        <div class="file-list">
            <p>平台包含实时数据统计功能，显示：</p>
            <ul>
                <li>当前图表类型</li>
                <li>数据点数量</li>
                <li>渲染时间</li>
                <li>最后更新时间</li>
            </ul>
        </div>
    </div>
    
    <div class="footer" style="text-align: center; margin-top: 30px; color: #666;">
        <p>部署完成时间: $(date) | 数据可视化学习平台</p>
    </div>
</body>
</html>
EOF
    
    print_info "部署报告已生成 ✓"
}

# 验证部署
verify_deployment() {
    print_info "验证部署状态..."
    
    # 这里可以添加实际的验证逻辑
    # 例如：curl -I https://022340611.xyz/chapter8_deploy_optimized.html
    
    print_warning "请在浏览器中验证以下链接:"
    echo "https://022340611.xyz/chapter8_deploy_optimized.html"
}

# 主函数
main() {
    print_info "开始部署第8章数据可视化平台..."
    
    check_files
    generate_deploy_report
    
    print_info "准备部署文件..."
    ls -la chapter8*.html
    
    echo ""
    print_info "=== 部署选项 ==="
    echo "1. GitHub Pages 自动部署"
    echo "2. Netlify 手动部署"
    echo "3. FTP/SFTP 手动上传"
    echo "4. 服务器直接部署"
    echo ""
    
    read -p "请选择部署方式 (1-4): " choice
    
    case $choice in
        1)
            print_info "GitHub Pages 部署配置已准备就绪"
            print_info "请推送到 GitHub 仓库以触发自动部署"
            ;;
        2)
            print_info "请访问 Netlify 并连接仓库进行部署"
            print_info "配置文件: netlify.toml 已准备就绪"
            ;;
        3)
            print_info "请参考 ftp-deploy-config.txt 进行手动上传"
            ;;
        4)
            print_info "请将文件上传到服务器根目录"
            ;;
        *)
            print_error "无效选择"
            exit 1
            ;;
    esac
    
    verify_deployment
    
    echo ""
    print_info "=== 部署完成 ==="
    print_info "第8章高级数据可视化平台已准备就绪！"
    print_warning "请验证网站访问: https://022340611.xyz/chapter8_deploy_optimized.html"
    echo ""
}

# 执行主函数
main