.class public Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$f;
.super Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "exact_alarms_not_permitted"

    const-string v1, "Exact alarms are not permitted"

    invoke-direct {p0, v0, v1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
