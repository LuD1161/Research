.class public LE2/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LE2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final c:Landroid/app/Activity;

.field public final synthetic d:LE2/d;


# direct methods
.method public constructor <init>(LE2/d;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, LE2/d$b;->d:LE2/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LE2/d$b;->c:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public a(Landroidx/lifecycle/k;)V
    .locals 0

    return-void
.end method

.method public b(Landroidx/lifecycle/k;)V
    .locals 0

    iget-object p1, p0, LE2/d$b;->c:Landroid/app/Activity;

    invoke-virtual {p0, p1}, LE2/d$b;->onActivityDestroyed(Landroid/app/Activity;)V

    return-void
.end method

.method public c(Landroidx/lifecycle/k;)V
    .locals 0

    return-void
.end method

.method public e(Landroidx/lifecycle/k;)V
    .locals 0

    return-void
.end method

.method public f(Landroidx/lifecycle/k;)V
    .locals 0

    return-void
.end method

.method public g(Landroidx/lifecycle/k;)V
    .locals 0

    iget-object p1, p0, LE2/d$b;->c:Landroid/app/Activity;

    invoke-virtual {p0, p1}, LE2/d$b;->onActivityStopped(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, LE2/d$b;->c:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
