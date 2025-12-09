.class public final enum Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation


# static fields
.field public static final enum e:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;

.field public static final enum f:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;

.field public static final enum g:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;

.field public static final enum h:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;

.field public static final synthetic i:[Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;->e:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;

    new-instance v0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;

    const-string v1, "RequestingNotificationPermission"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;->f:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;

    new-instance v0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;

    const-string v1, "RequestingExactAlarmsPermission"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;->g:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;

    new-instance v0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;

    const-string v1, "RequestingFullScreenIntentPermission"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;->h:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;

    invoke-static {}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;->b()[Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;

    move-result-object v0

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;->i:[Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic b()[Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;
    .locals 4

    sget-object v0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;->e:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;

    sget-object v1, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;->f:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;

    sget-object v2, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;->g:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;

    sget-object v3, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;->h:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;

    filled-new-array {v0, v1, v2, v3}, [Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;
    .locals 1

    const-class v0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;

    return-object p0
.end method

.method public static values()[Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;
    .locals 1

    sget-object v0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;->i:[Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;

    invoke-virtual {v0}, [Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$g;

    return-object v0
.end method
