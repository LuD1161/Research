.class public final Lp2/r;
.super Lq2/t;
.source "SourceFile"


# instance fields
.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:LR1/g;

.field public final synthetic h:Lp2/w;


# direct methods
.method public constructor <init>(Lp2/w;LR1/g;Ljava/lang/String;LR1/g;)V
    .locals 0

    iput-object p1, p0, Lp2/r;->h:Lp2/w;

    iput-object p3, p0, Lp2/r;->f:Ljava/lang/String;

    iput-object p4, p0, Lp2/r;->g:LR1/g;

    invoke-direct {p0, p2}, Lq2/t;-><init>(LR1/g;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lp2/r;->h:Lp2/w;

    iget-object v0, v0, Lp2/w;->a:Lq2/D;

    invoke-virtual {v0}, Lq2/D;->e()Landroid/os/IInterface;

    move-result-object v0

    iget-object v1, p0, Lp2/r;->h:Lp2/w;

    invoke-static {v1}, Lp2/w;->h(Lp2/w;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lp2/r;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lp2/w;->b(Lp2/w;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    new-instance v3, Lp2/v;

    iget-object v4, p0, Lp2/r;->h:Lp2/w;

    iget-object v5, p0, Lp2/r;->g:LR1/g;

    iget-object v6, p0, Lp2/r;->f:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Lp2/v;-><init>(Lp2/w;LR1/g;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1, v3}, Lq2/l;->j(Ljava/lang/String;Landroid/os/Bundle;Lq2/n;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lp2/w;->g()Lq2/s;

    move-result-object v1

    iget-object v2, p0, Lp2/r;->f:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "requestUpdateInfo(%s)"

    invoke-virtual {v1, v0, v3, v2}, Lq2/s;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lp2/r;->g:LR1/g;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, LR1/g;->c(Ljava/lang/Exception;)Z

    return-void
.end method
