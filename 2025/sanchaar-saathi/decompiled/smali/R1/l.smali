.class public final LR1/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:LR1/f;

.field public final synthetic f:LR1/m;


# direct methods
.method public constructor <init>(LR1/m;LR1/f;)V
    .locals 0

    iput-object p2, p0, LR1/l;->e:LR1/f;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, LR1/l;->f:LR1/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LR1/l;->f:LR1/m;

    invoke-virtual {v0}, LR1/m;->b()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, LR1/m;->c()LR1/c;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, LR1/m;->c()LR1/c;

    move-result-object v0

    iget-object v2, p0, LR1/l;->e:LR1/f;

    invoke-virtual {v2}, LR1/f;->e()Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v2}, Lz1/o;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    invoke-interface {v0, v2}, LR1/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
