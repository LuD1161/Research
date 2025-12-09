.class public abstract LS1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LS1/b$b;,
        LS1/b$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:LS1/b$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LS1/b;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract a(LS1/c;)Landroid/util/SparseArray;
.end method

.method public abstract b()Z
.end method

.method public c(LS1/c;)V
    .locals 3

    new-instance v0, LS1/c$b;

    invoke-virtual {p1}, LS1/c;->c()LS1/c$b;

    move-result-object v1

    invoke-direct {v0, v1}, LS1/c$b;-><init>(LS1/c$b;)V

    invoke-virtual {v0}, LS1/c$b;->i()V

    invoke-virtual {p0, p1}, LS1/b;->a(LS1/c;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p0}, LS1/b;->b()Z

    move-result v1

    new-instance v2, LS1/b$a;

    invoke-direct {v2, p1, v0, v1}, LS1/b$a;-><init>(Landroid/util/SparseArray;LS1/c$b;Z)V

    iget-object p1, p0, LS1/b;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, LS1/b;->b:LS1/b$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, v2}, LS1/b$b;->a(LS1/b$a;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Detector processor must first be set with setProcessor in order to receive detection results."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, LS1/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LS1/b;->b:LS1/b$b;

    if-eqz v1, :cond_0

    invoke-interface {v1}, LS1/b$b;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, LS1/b;->b:LS1/b$b;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e(LS1/b$b;)V
    .locals 2

    iget-object v0, p0, LS1/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LS1/b;->b:LS1/b$b;

    if-eqz v1, :cond_0

    invoke-interface {v1}, LS1/b$b;->release()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iput-object p1, p0, LS1/b;->b:LS1/b$b;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
