.class public final Lz1/C;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/util/SparseIntArray;

.field public b:Lu1/e;


# direct methods
.method public constructor <init>(Lu1/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lz1/C;->a:Landroid/util/SparseIntArray;

    invoke-static {p1}, Lz1/o;->f(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lz1/C;->b:Lu1/e;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lv1/a$f;)I
    .locals 5

    invoke-static {p1}, Lz1/o;->f(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lz1/o;->f(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Lv1/a$f;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p2}, Lv1/a$f;->i()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lz1/C;->b(Landroid/content/Context;I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lz1/C;->a:Landroid/util/SparseIntArray;

    monitor-enter v0

    move v3, v1

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    if-le v4, p2, :cond_2

    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_1
    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lz1/C;->b:Lu1/e;

    invoke-virtual {v1, p1, p2}, Lu1/e;->g(Landroid/content/Context;I)I

    move-result p1

    goto :goto_2

    :cond_4
    move p1, v1

    :goto_2
    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    monitor-exit v0

    move v0, p1

    :goto_3
    return v0

    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Landroid/content/Context;I)I
    .locals 1

    iget-object p1, p0, Lz1/C;->a:Landroid/util/SparseIntArray;

    monitor-enter p1

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lz1/C;->a:Landroid/util/SparseIntArray;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
