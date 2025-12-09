.class public abstract Lj3/d$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final e:Lj3/d;

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Lj3/d;)V
    .locals 1

    const-string v0, "map"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj3/d$d;->e:Lj3/d;

    const/4 v0, -0x1

    iput v0, p0, Lj3/d$d;->g:I

    invoke-static {p1}, Lj3/d;->e(Lj3/d;)I

    move-result p1

    iput p1, p0, Lj3/d$d;->h:I

    invoke-virtual {p0}, Lj3/d$d;->g()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    iget-object v0, p0, Lj3/d$d;->e:Lj3/d;

    invoke-static {v0}, Lj3/d;->e(Lj3/d;)I

    move-result v0

    iget v1, p0, Lj3/d$d;->h:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lj3/d$d;->f:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lj3/d$d;->g:I

    return v0
.end method

.method public final f()Lj3/d;
    .locals 1

    iget-object v0, p0, Lj3/d$d;->e:Lj3/d;

    return-object v0
.end method

.method public final g()V
    .locals 2

    :goto_0
    iget v0, p0, Lj3/d$d;->f:I

    iget-object v1, p0, Lj3/d$d;->e:Lj3/d;

    invoke-static {v1}, Lj3/d;->d(Lj3/d;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lj3/d$d;->e:Lj3/d;

    invoke-static {v0}, Lj3/d;->f(Lj3/d;)[I

    move-result-object v0

    iget v1, p0, Lj3/d$d;->f:I

    aget v0, v0, v1

    if-gez v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lj3/d$d;->f:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final h(I)V
    .locals 0

    iput p1, p0, Lj3/d$d;->f:I

    return-void
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lj3/d$d;->f:I

    iget-object v1, p0, Lj3/d$d;->e:Lj3/d;

    invoke-static {v1}, Lj3/d;->d(Lj3/d;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final i(I)V
    .locals 0

    iput p1, p0, Lj3/d$d;->g:I

    return-void
.end method

.method public final remove()V
    .locals 3

    invoke-virtual {p0}, Lj3/d$d;->c()V

    iget v0, p0, Lj3/d$d;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lj3/d$d;->e:Lj3/d;

    invoke-virtual {v0}, Lj3/d;->l()V

    iget-object v0, p0, Lj3/d$d;->e:Lj3/d;

    iget v2, p0, Lj3/d$d;->g:I

    invoke-static {v0, v2}, Lj3/d;->h(Lj3/d;I)V

    iput v1, p0, Lj3/d$d;->g:I

    iget-object v0, p0, Lj3/d$d;->e:Lj3/d;

    invoke-static {v0}, Lj3/d;->e(Lj3/d;)I

    move-result v0

    iput v0, p0, Lj3/d$d;->h:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call next() before removing element from the iterator."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
