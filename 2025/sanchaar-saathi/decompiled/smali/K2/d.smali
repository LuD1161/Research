.class public LK2/d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements LY2/c$d;


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:LK2/a;

.field public e:LY2/c$b;

.field public final f:Landroid/os/Handler;

.field public g:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;LK2/a;)V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LK2/d;->f:Landroid/os/Handler;

    iput-object p1, p0, LK2/d;->c:Landroid/content/Context;

    iput-object p2, p0, LK2/d;->d:LK2/a;

    return-void
.end method

.method public static synthetic c(LK2/d;)V
    .locals 0

    invoke-virtual {p0}, LK2/d;->h()V

    return-void
.end method

.method public static synthetic d(LK2/d;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, LK2/d;->i(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic e(LK2/d;)LK2/a;
    .locals 0

    iget-object p0, p0, LK2/d;->d:LK2/a;

    return-object p0
.end method

.method public static bridge synthetic f(LK2/d;)V
    .locals 0

    invoke-virtual {p0}, LK2/d;->j()V

    return-void
.end method

.method public static bridge synthetic g(LK2/d;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, LK2/d;->k(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;LY2/c$b;)V
    .locals 0

    iput-object p2, p0, LK2/d;->e:LY2/c$b;

    new-instance p1, LK2/d$a;

    invoke-direct {p1, p0}, LK2/d$a;-><init>(LK2/d;)V

    iput-object p1, p0, LK2/d;->g:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object p1, p0, LK2/d;->d:LK2/a;

    invoke-virtual {p1}, LK2/a;->c()Landroid/net/ConnectivityManager;

    move-result-object p1

    iget-object p2, p0, LK2/d;->g:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    iget-object p1, p0, LK2/d;->d:LK2/a;

    invoke-virtual {p1}, LK2/a;->d()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, LK2/d;->k(Ljava/util/List;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, LK2/d;->g:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz p1, :cond_0

    iget-object p1, p0, LK2/d;->d:LK2/a;

    invoke-virtual {p1}, LK2/a;->c()Landroid/net/ConnectivityManager;

    move-result-object p1

    iget-object v0, p0, LK2/d;->g:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 p1, 0x0

    iput-object p1, p0, LK2/d;->g:Landroid/net/ConnectivityManager$NetworkCallback;

    :cond_0
    return-void
.end method

.method public final synthetic h()V
    .locals 2

    iget-object v0, p0, LK2/d;->e:LY2/c$b;

    iget-object v1, p0, LK2/d;->d:LK2/a;

    invoke-virtual {v1}, LK2/a;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, LY2/c$b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic i(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, LK2/d;->e:LY2/c$b;

    invoke-interface {v0, p1}, LY2/c$b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final j()V
    .locals 4

    new-instance v0, LK2/c;

    invoke-direct {v0, p0}, LK2/c;-><init>(LK2/d;)V

    iget-object v1, p0, LK2/d;->f:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final k(Ljava/util/List;)V
    .locals 1

    new-instance v0, LK2/b;

    invoke-direct {v0, p0, p1}, LK2/b;-><init>(LK2/d;Ljava/util/List;)V

    iget-object p1, p0, LK2/d;->f:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, LK2/d;->e:LY2/c$b;

    if-eqz p1, :cond_0

    iget-object p2, p0, LK2/d;->d:LK2/a;

    invoke-virtual {p2}, LK2/a;->d()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, LY2/c$b;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
