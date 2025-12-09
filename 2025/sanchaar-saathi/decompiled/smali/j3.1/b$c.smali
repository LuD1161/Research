.class public final Lj3/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final e:Lj3/b;

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Lj3/b;I)V
    .locals 1

    const-string v0, "list"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj3/b$c;->e:Lj3/b;

    iput p2, p0, Lj3/b$c;->f:I

    const/4 p2, -0x1

    iput p2, p0, Lj3/b$c;->g:I

    invoke-static {p1}, Lj3/b;->y(Lj3/b;)I

    move-result p1

    iput p1, p0, Lj3/b$c;->h:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0}, Lj3/b$c;->c()V

    iget-object v0, p0, Lj3/b$c;->e:Lj3/b;

    iget v1, p0, Lj3/b$c;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lj3/b$c;->f:I

    invoke-virtual {v0, v1, p1}, Lj3/b;->add(ILjava/lang/Object;)V

    const/4 p1, -0x1

    iput p1, p0, Lj3/b$c;->g:I

    iget-object p1, p0, Lj3/b$c;->e:Lj3/b;

    invoke-static {p1}, Lj3/b;->y(Lj3/b;)I

    move-result p1

    iput p1, p0, Lj3/b$c;->h:I

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lj3/b$c;->e:Lj3/b;

    invoke-static {v0}, Lj3/b;->y(Lj3/b;)I

    move-result v0

    iget v1, p0, Lj3/b$c;->h:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lj3/b$c;->f:I

    iget-object v1, p0, Lj3/b$c;->e:Lj3/b;

    invoke-static {v1}, Lj3/b;->x(Lj3/b;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    iget v0, p0, Lj3/b$c;->f:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lj3/b$c;->c()V

    iget v0, p0, Lj3/b$c;->f:I

    iget-object v1, p0, Lj3/b$c;->e:Lj3/b;

    invoke-static {v1}, Lj3/b;->x(Lj3/b;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lj3/b$c;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lj3/b$c;->f:I

    iput v0, p0, Lj3/b$c;->g:I

    iget-object v0, p0, Lj3/b$c;->e:Lj3/b;

    invoke-static {v0}, Lj3/b;->w(Lj3/b;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lj3/b$c;->g:I

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    iget v0, p0, Lj3/b$c;->f:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lj3/b$c;->c()V

    iget v0, p0, Lj3/b$c;->f:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lj3/b$c;->f:I

    iput v0, p0, Lj3/b$c;->g:I

    iget-object v0, p0, Lj3/b$c;->e:Lj3/b;

    invoke-static {v0}, Lj3/b;->w(Lj3/b;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lj3/b$c;->g:I

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    iget v0, p0, Lj3/b$c;->f:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 3

    invoke-virtual {p0}, Lj3/b$c;->c()V

    iget v0, p0, Lj3/b$c;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lj3/b$c;->e:Lj3/b;

    invoke-virtual {v2, v0}, Li3/e;->remove(I)Ljava/lang/Object;

    iget v0, p0, Lj3/b$c;->g:I

    iput v0, p0, Lj3/b$c;->f:I

    iput v1, p0, Lj3/b$c;->g:I

    iget-object v0, p0, Lj3/b$c;->e:Lj3/b;

    invoke-static {v0}, Lj3/b;->y(Lj3/b;)I

    move-result v0

    iput v0, p0, Lj3/b$c;->h:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call next() or previous() before removing element from the iterator."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lj3/b$c;->c()V

    iget v0, p0, Lj3/b$c;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lj3/b$c;->e:Lj3/b;

    invoke-virtual {v1, v0, p1}, Lj3/b;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Call next() or previous() before replacing element from the iterator."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
