.class public final Lq2/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:Lq2/D;


# direct methods
.method public synthetic constructor <init>(Lq2/D;Lq2/B;)V
    .locals 0

    iput-object p1, p0, Lq2/C;->a:Lq2/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lq2/C;->a:Lq2/D;

    invoke-static {v0}, Lq2/D;->f(Lq2/D;)Lq2/s;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "ServiceConnectionImpl.onServiceConnected(%s)"

    invoke-virtual {v0, v1, p1}, Lq2/s;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Lq2/C;->a:Lq2/D;

    new-instance v0, Lq2/z;

    invoke-direct {v0, p0, p2}, Lq2/z;-><init>(Lq2/C;Landroid/os/IBinder;)V

    invoke-virtual {p1}, Lq2/D;->c()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lq2/C;->a:Lq2/D;

    invoke-static {v0}, Lq2/D;->f(Lq2/D;)Lq2/s;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "ServiceConnectionImpl.onServiceDisconnected(%s)"

    invoke-virtual {v0, v1, p1}, Lq2/s;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Lq2/C;->a:Lq2/D;

    new-instance v0, Lq2/A;

    invoke-direct {v0, p0}, Lq2/A;-><init>(Lq2/C;)V

    invoke-virtual {p1}, Lq2/D;->c()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
