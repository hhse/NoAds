

%hook NSURL
+ (id)URLWithString:(NSString *)URLString
{
    if([URLString containsString:@"mumu.umu])
    {
        URLString = @"木木";
    }
    
  if([URLString containsString:@"mumu.umu"])
    {
        URLString = @"木木";
    }
    
    if([URLString containsString:@"mumu.umu"])
    {
        URLString = @"木木 IOS分享";
    }
    if([URLString containsString:@"mumu.umu"])
    {
        URLString = @"木木 IOS分享";
    }


return %orig;


}
%end
