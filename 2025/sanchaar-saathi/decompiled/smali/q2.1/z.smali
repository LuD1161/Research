.class public final Lq2/z;
.super Lq2/t;
.source "SourceFile"


# instance fields
.field public final synthetic f:Landroid/os/IBinder;

.field public final synthetic g:Lq2/C;


# direct methods
.method public constructor <init>(Lq2/C;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lq2/z;->g:Lq2/C;

    iput-object p2, p0, Lq2/z;->f:Landroid/os/IBinder;

    invoke-direct {p0}, Lq2/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lq2/z;->g:Lq2/C;

    iget-object v0, v0, Lq2/C;->a:Lq2/D;

    iget-object v1, p0, Lq2/z;->f:Landroid/os/IBinder;

    invoke-static {v1}, Lq2/k;->I(Landroid/os/IBinder;)Lq2/l;

    move-result-object v1

    invoke-static {v0, v1}, Lq2/D;->m(Lq2/D;Landroid/os/IInterface;)V

    iget-object v0, p0, Lq2/z;->g:Lq2/C;

    iget-object v0, v0, Lq2/C;->a:Lq2/D;

    invoke-static {v0}, Lq2/D;->q(Lq2/D;)V

    iget-object v0, p0, Lq2/z;->g:Lq2/C;

    iget-object v0, v0, Lq2/C;->a:Lq2/D;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lq2/D;->l(Lq2/D;Z)V

    iget-object v0, p0, Lq2/z;->g:Lq2/C;

    iget-object v0, v0, Lq2/C;->a:Lq2/D;

    invoke-static {v0}, Lq2/D;->h(Lq2/D;)Ljava/util/List;

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
    iget-object v0, p0, Lq2/z;->g:Lq2/C;

    iget-object v0, v0, Lq2/C;->a:Lq2/D;

    invoke-static {v0}, Lq2/D;->h(Lq2/D;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
