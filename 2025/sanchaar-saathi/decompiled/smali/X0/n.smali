.class public final LX0/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LX0/h;

.field public final b:LX0/c;

.field public final c:LX0/h;

.field public final d:LX0/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc1/b;)V
    .locals 10

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskExecutor"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x3c

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, LX0/n;-><init>(Landroid/content/Context;Lc1/b;LX0/h;LX0/c;LX0/h;LX0/h;ILv3/g;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lc1/b;LX0/h;LX0/c;LX0/h;LX0/h;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "taskExecutor"

    invoke-static {p2, p1}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "batteryChargingTracker"

    invoke-static {p3, p1}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "batteryNotLowTracker"

    invoke-static {p4, p1}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "networkStateTracker"

    invoke-static {p5, p1}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "storageNotLowTracker"

    invoke-static {p6, p1}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p3, p0, LX0/n;->a:LX0/h;

    .line 4
    iput-object p4, p0, LX0/n;->b:LX0/c;

    .line 5
    iput-object p5, p0, LX0/n;->c:LX0/h;

    .line 6
    iput-object p6, p0, LX0/n;->d:LX0/h;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lc1/b;LX0/h;LX0/c;LX0/h;LX0/h;ILv3/g;)V
    .locals 7

    and-int/lit8 v0, p7, 0x4

    .line 7
    const-string v1, "context.applicationContext"

    if-eqz v0, :cond_0

    .line 8
    new-instance v0, LX0/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v3, p2}, LX0/a;-><init>(Landroid/content/Context;Lc1/b;)V

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p3

    :goto_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    .line 9
    new-instance v0, LX0/c;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v4, p2}, LX0/c;-><init>(Landroid/content/Context;Lc1/b;)V

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, p4

    :goto_1
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p2}, LX0/k;->a(Landroid/content/Context;Lc1/b;)LX0/h;

    move-result-object v0

    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object v5, p5

    :goto_2
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_3

    .line 11
    new-instance v0, LX0/l;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v6, p2}, LX0/l;-><init>(Landroid/content/Context;Lc1/b;)V

    move-object v6, v0

    goto :goto_3

    :cond_3
    move-object v6, p6

    :goto_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 12
    invoke-direct/range {v0 .. v6}, LX0/n;-><init>(Landroid/content/Context;Lc1/b;LX0/h;LX0/c;LX0/h;LX0/h;)V

    return-void
.end method


# virtual methods
.method public final a()LX0/h;
    .locals 1

    iget-object v0, p0, LX0/n;->a:LX0/h;

    return-object v0
.end method

.method public final b()LX0/c;
    .locals 1

    iget-object v0, p0, LX0/n;->b:LX0/c;

    return-object v0
.end method

.method public final c()LX0/h;
    .locals 1

    iget-object v0, p0, LX0/n;->c:LX0/h;

    return-object v0
.end method

.method public final d()LX0/h;
    .locals 1

    iget-object v0, p0, LX0/n;->d:LX0/h;

    return-object v0
.end method
