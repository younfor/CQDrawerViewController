# CQDrawerViewController
iOS Swift侧拉抽屉控件, 只有一个文件，灵活的左侧拉，右侧拉手势。代码少可以自己修改增加效果

##使用方法

将CQDrawerViewController.swift放入你的工程即可，具体demo就是github这个工程

1. 实例化CQDrawerViewController作为rootviewcontroller

''''// 重新确定根控制器
    self.window = UIWindow.init(frame: CGRectMake(0, 0, UIScreen.mainScreen().bounds.width, UIScreen.mainScreen().bounds.height))
    let rootController = CQDrawerViewController()
    let mainController = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("tabbarcontroller")
    rootController.leftController = LeftViewController()
    rootController.mainController = mainController
    rootController.rightController = RightViewController()
    self.window?.rootViewController = rootController
    self.window?.makeKeyAndVisible()

2. 可以只添加一个leftcontroller或者rightcontroller

3. 如果要在按钮事件弹出左侧，右侧用通知即可

''''NSNotificationCenter.defaultCenter().postNotificationName("showright", object: nil)

''''NSNotificationCenter.defaultCenter().postNotificationName("showleft", object: nil)

