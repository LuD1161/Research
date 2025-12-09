.class public La1/z$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La1/z;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lb1/c;

.field public final synthetic f:La1/z;


# direct methods
.method public constructor <init>(La1/z;Lb1/c;)V
    .locals 0

    iput-object p1, p0, La1/z$a;->f:La1/z;

    iput-object p2, p0, La1/z$a;->e:Lb1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, La1/z$a;->f:La1/z;

    iget-object v0, v0, La1/z;->e:Lb1/c;

    invoke-virtual {v0}, Lb1/a;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, La1/z$a;->e:Lb1/c;

    invoke-virtual {v0}, Lb1/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQ0/e;

    if-eqz v0, :cond_1

    invoke-static {}, LQ0/i;->e()LQ0/i;

    move-result-object v1

    sget-object v2, La1/z;->k:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating notification for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, La1/z$a;->f:La1/z;

    iget-object v4, v4, La1/z;->g:LZ0/u;

    iget-object v4, v4, LZ0/u;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, LQ0/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, La1/z$a;->f:La1/z;

    iget-object v2, v1, La1/z;->e:Lb1/c;

    iget-object v3, v1, La1/z;->i:LQ0/f;

    iget-object v4, v1, La1/z;->f:Landroid/content/Context;

    iget-object v1, v1, La1/z;->h:Landroidx/work/c;

    invoke-virtual {v1}, Landroidx/work/c;->f()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v3, v4, v1, v0}, LQ0/f;->a(Landroid/content/Context;Ljava/util/UUID;LQ0/e;)Ly2/a;

    move-result-object v0

    invoke-virtual {v2, v0}, Lb1/c;->r(Ly2/a;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Worker was marked important ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La1/z$a;->f:La1/z;

    iget-object v1, v1, La1/z;->g:LZ0/u;

    iget-object v1, v1, LZ0/u;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") but did not provide ForegroundInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v1, p0, La1/z$a;->f:La1/z;

    iget-object v1, v1, La1/z;->e:Lb1/c;

    invoke-virtual {v1, v0}, Lb1/c;->q(Ljava/lang/Throwable;)Z

    :goto_1
    return-void
.end method
