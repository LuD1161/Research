.class public final Lw2/p;
.super Lw2/j;
.source "SourceFile"


# instance fields
.field public final synthetic f:Landroid/os/IBinder;

.field public final synthetic g:Lw2/r;


# direct methods
.method public constructor <init>(Lw2/r;Landroid/os/IBinder;)V
    .locals 0

    iput-object p2, p0, Lw2/p;->f:Landroid/os/IBinder;

    iput-object p1, p0, Lw2/p;->g:Lw2/r;

    invoke-direct {p0}, Lw2/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lw2/p;->f:Landroid/os/IBinder;

    invoke-static {v0}, Lw2/e;->I(Landroid/os/IBinder;)Lw2/f;

    move-result-object v0

    iget-object v1, p0, Lw2/p;->g:Lw2/r;

    iget-object v1, v1, Lw2/r;->a:Lw2/t;

    invoke-static {v1, v0}, Lw2/t;->m(Lw2/t;Landroid/os/IInterface;)V

    iget-object v0, p0, Lw2/p;->g:Lw2/r;

    iget-object v0, v0, Lw2/r;->a:Lw2/t;

    invoke-static {v0}, Lw2/t;->q(Lw2/t;)V

    iget-object v0, p0, Lw2/p;->g:Lw2/r;

    iget-object v0, v0, Lw2/r;->a:Lw2/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lw2/t;->l(Lw2/t;Z)V

    iget-object v0, p0, Lw2/p;->g:Lw2/r;

    iget-object v0, v0, Lw2/r;->a:Lw2/t;

    invoke-static {v0}, Lw2/t;->h(Lw2/t;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lw2/p;->g:Lw2/r;

    iget-object v0, v0, Lw2/r;->a:Lw2/t;

    invoke-static {v0}, Lw2/t;->h(Lw2/t;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
