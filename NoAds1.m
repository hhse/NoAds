#define UTF8Z(x) ({ \
    const char *utf8String = x; \
    NSString *hhh = [[NSString alloc] initWithUTF8String:utf8String]; \
    hhh; \
})

%hook NSURL

+ (id)URLWithString:(NSString *)URLString
{
    // 定义所有需要拦截的关键词
    NSArray *blockedKeywords = @[
        @"mumu.com", //域名，自己根据添加
        @"mumu.com",
        @"mumu.com",
        @"mumu.comd",
        @"mumu.com",
        @"mumu.com",
        @"mumu.com"
    ];

    // 遍历所有关键词，如果 URL 中包含某个关键词，则修改为自定义字符串
    for (NSString *keyword in blockedKeywords) {
        if ([URLString containsString:keyword]) {
            URLString = @"木木IOS分享";
            break;
        }
    }

    return %orig;
}

%end
