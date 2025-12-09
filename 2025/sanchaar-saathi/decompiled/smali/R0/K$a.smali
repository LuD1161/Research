.class public LR0/K$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LR0/K;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ly2/a;

.field public final synthetic f:LR0/K;


# direct methods
.method public constructor <init>(LR0/K;Ly2/a;)V
    .locals 0

    iput-object p1, p0, LR0/K$a;->f:LR0/K;

    iput-object p2, p0, LR0/K$a;->e:Ly2/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LR0/K$a;->f:LR0/K;

    iget-object v0, v0, LR0/K;->u:Lb1/c;

    invoke-virtual {v0}, Lb1/a;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, LR0/K$a;->e:Ly2/a;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    invoke-static {}, LQ0/i;->e()LQ0/i;

    move-result-object v0

    sget-object v1, LR0/K;->w:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting work for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, LR0/K$a;->f:LR0/K;

    iget-object v3, v3, LR0/K;->i:LZ0/u;

    iget-object v3, v3, LZ0/u;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LQ0/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LR0/K$a;->f:LR0/K;

    iget-object v1, v0, LR0/K;->u:Lb1/c;

    iget-object v0, v0, LR0/K;->j:Landroidx/work/c;

    invoke-virtual {v0}, Landroidx/work/c;->m()Ly2/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lb1/c;->r(Ly2/a;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, LR0/K$a;->f:LR0/K;

    iget-object v1, v1, LR0/K;->u:Lb1/c;

    invoke-virtual {v1, v0}, Lb1/c;->q(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
