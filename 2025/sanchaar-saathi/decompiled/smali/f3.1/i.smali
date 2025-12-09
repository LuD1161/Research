.class public final Lf3/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT2/a;
.implements LU2/a;


# instance fields
.field public c:Lf3/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToActivity(LU2/c;)V
    .locals 1

    iget-object v0, p0, Lf3/i;->c:Lf3/h;

    if-nez v0, :cond_0

    const-string p1, "UrlLauncherPlugin"

    const-string v0, "urlLauncher was never set."

    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {p1}, LU2/c;->e()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lf3/h;->y(Landroid/app/Activity;)V

    return-void
.end method

.method public onAttachedToEngine(LT2/a$b;)V
    .locals 2

    new-instance v0, Lf3/h;

    invoke-virtual {p1}, LT2/a$b;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lf3/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lf3/i;->c:Lf3/h;

    invoke-virtual {p1}, LT2/a$b;->b()LY2/b;

    move-result-object p1

    iget-object v0, p0, Lf3/i;->c:Lf3/h;

    invoke-static {p1, v0}, Lf3/a$d;->f(LY2/b;Lf3/a$d;)V

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 2

    iget-object v0, p0, Lf3/i;->c:Lf3/h;

    if-nez v0, :cond_0

    const-string v0, "UrlLauncherPlugin"

    const-string v1, "urlLauncher was never set."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lf3/h;->y(Landroid/app/Activity;)V

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    invoke-virtual {p0}, Lf3/i;->onDetachedFromActivity()V

    return-void
.end method

.method public onDetachedFromEngine(LT2/a$b;)V
    .locals 1

    iget-object v0, p0, Lf3/i;->c:Lf3/h;

    if-nez v0, :cond_0

    const-string p1, "UrlLauncherPlugin"

    const-string v0, "Already detached from the engine."

    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, LT2/a$b;->b()LY2/b;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lf3/a$d;->f(LY2/b;Lf3/a$d;)V

    iput-object v0, p0, Lf3/i;->c:Lf3/h;

    return-void
.end method

.method public onReattachedToActivityForConfigChanges(LU2/c;)V
    .locals 0

    invoke-virtual {p0, p1}, Lf3/i;->onAttachedToActivity(LU2/c;)V

    return-void
.end method
