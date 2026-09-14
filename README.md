# RuoYi-v4.6.2 - 漏洞总览

| # | 漏洞名称 | 类型 | 严重级别 | 需要认证 | 已验证 |
|---|---|---|---|---|---|
| 1 | 定时任务 SnakeYAML 反序列化 RCE | RCE | 🔴 Critical | 是 | ✅ 已验证 |
| 2 | 定时任务 JNDI 注入 RCE | RCE | 🔴 Critical | 是 | ✅ 已验证 |
| 3 | 定时任务 SQL 注入修改数据库 RCE | RCE (链式) | 🔴 Critical | 是 | ✅ 已验证 |
| 4 | Thymeleaf SSTI 模板注入 RCE | RCE | 🟠 High | 是 | ⚠️ 端点存在 |
| 5 | Shiro 默认密钥反序列化 RCE | RCE | 🔴 Critical | 否 | ⚠️ 需外部工具 |
| 6 | Fastjson 反序列化 RCE | RCE | 🔴 Critical | 是 | ⚠️ 端点存在 |
| 7 | Log4j2 JNDI 远程代码执行 (Log4Shell) | RCE | 🔴 Critical | 否 | ⚠️ 需LDAP服务器 |
| 8 | 任意文件下载 | 信息泄露 | 🟠 High | 是 | ✅ 已验证 |
| 9 | SQL 注入 (MyBatis) | SQL 注入 | 🟠 High | 是 | ✅ 已验证 |
| 10 | 代码生成 SQL 注入 | SQL 注入 | 🟠 High | 是 | ✅ 已验证 |
| 11 | 任意文件上传 / 存储型 XSS | XSS | 🟡 Medium | 是 | ✅ 已验证 |
| 12 | 用户导入 XSS | XSS | 🟡 Medium | 是 | ⚠️ 需构造xlsx |
| 13 | 默认口令 | 默认凭证 | 🔴 Critical | 否 | ✅ 已验证 |
| 14 | Druid 监控台信息泄露 | 信息泄露 | 🟠 High | 是 | ✅ 已验证 |
| 15 | Shiro 权限绕过 | 认证绕过 | 🟠 High | 否 | ✅ 已验证(已修复) |
| 16 | Spring Framework RFD | 文件下载 | 🟡 Medium | 否 | ⚠️ 组件漏洞 |
| 17 | 任意用户注册 | 访问控制 | 🟡 Medium | 否 | ✅ 已验证 |
| 18 | 第三方组件漏洞汇总 | 依赖漏洞 | 多级别 | 视漏洞 | ⚠️ 版本确认 |
| **19** | **CVE-2026-4564: Quartz 代码注入 RCE** | **代码注入** | **🔴 Critical** | **是** | **✅ 已验证** |
