.class public abstract LH3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public e:[LH3/d;

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()LH3/d;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LH3/b;->e:[LH3/d;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, LH3/b;->g(I)[LH3/d;

    move-result-object v0

    iput-object v0, p0, LH3/b;->e:[LH3/d;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget v2, p0, LH3/b;->f:I

    array-length v3, v0

    if-lt v2, v3, :cond_1

    array-length v2, v0

    mul-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "copyOf(this, newSize)"

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, [LH3/d;

    iput-object v1, p0, LH3/b;->e:[LH3/d;

    check-cast v0, [LH3/d;

    :cond_1
    :goto_0
    iget v1, p0, LH3/b;->g:I

    :cond_2
    aget-object v2, v0, v1

    if-nez v2, :cond_3

    invoke-virtual {p0}, LH3/b;->f()LH3/d;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    array-length v3, v0

    if-lt v1, v3, :cond_4

    const/4 v1, 0x0

    :cond_4
    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>"

    invoke-static {v2, v3}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, LH3/d;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput v1, p0, LH3/b;->g:I

    iget v0, p0, LH3/b;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LH3/b;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public abstract f()LH3/d;
.end method

.method public abstract g(I)[LH3/d;
.end method

.method public final h(LH3/d;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, LH3/b;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LH3/b;->f:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput v1, p0, LH3/b;->g:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>"

    invoke-static {p1, v0}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, LH3/d;->b(Ljava/lang/Object;)[Ll3/e;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    if-eqz v2, :cond_1

    sget-object v3, Lh3/h;->e:Lh3/h$a;

    sget-object v3, Lh3/n;->a:Lh3/n;

    invoke-static {v3}, Lh3/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ll3/e;->q(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final i()[LH3/d;
    .locals 1

    iget-object v0, p0, LH3/b;->e:[LH3/d;

    return-object v0
.end method
