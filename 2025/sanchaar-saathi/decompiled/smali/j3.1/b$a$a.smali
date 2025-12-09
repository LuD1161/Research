.class public final Lj3/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj3/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final e:Lj3/b$a;

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Lj3/b$a;I)V
    .locals 1

    const-string v0, "list"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj3/b$a$a;->e:Lj3/b$a;

    iput p2, p0, Lj3/b$a$a;->f:I

    const/4 p2, -0x1

    iput p2, p0, Lj3/b$a$a;->g:I

    invoke-static {p1}, Lj3/b$a;->w(Lj3/b$a;)I

    move-result p1

    iput p1, p0, Lj3/b$a$a;->h:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0}, Lj3/b$a$a;->c()V

    iget-object v0, p0, Lj3/b$a$a;->e:Lj3/b$a;

    iget v1, p0, Lj3/b$a$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lj3/b$a$a;->f:I

    invoke-virtual {v0, v1, p1}, Lj3/b$a;->add(ILjava/lang/Object;)V

    const/4 p1, -0x1

    iput p1, p0, Lj3/b$a$a;->g:I

    iget-object p1, p0, Lj3/b$a$a;->e:Lj3/b$a;

    invoke-static {p1}, Lj3/b$a;->w(Lj3/b$a;)I

    move-result p1

    iput p1, p0, Lj3/b$a$a;->h:I

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lj3/b$a$a;->e:Lj3/b$a;

    invoke-static {v0}, Lj3/b$a;->y(Lj3/b$a;)Lj3/b;

    move-result-object v0

    invoke-static {v0}, Lj3/b;->y(Lj3/b;)I

    move-result v0

    iget v1, p0, Lj3/b$a$a;->h:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lj3/b$a$a;->f:I

    iget-object v1, p0, Lj3/b$a$a;->e:Lj3/b$a;

    invoke-static {v1}, Lj3/b$a;->v(Lj3/b$a;)I

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

    iget v0, p0, Lj3/b$a$a;->f:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lj3/b$a$a;->c()V

    iget v0, p0, Lj3/b$a$a;->f:I

    iget-object v1, p0, Lj3/b$a$a;->e:Lj3/b$a;

    invoke-static {v1}, Lj3/b$a;->v(Lj3/b$a;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lj3/b$a$a;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lj3/b$a$a;->f:I

    iput v0, p0, Lj3/b$a$a;->g:I

    iget-object v0, p0, Lj3/b$a$a;->e:Lj3/b$a;

    invoke-static {v0}, Lj3/b$a;->u(Lj3/b$a;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lj3/b$a$a;->e:Lj3/b$a;

    invoke-static {v1}, Lj3/b$a;->x(Lj3/b$a;)I

    move-result v1

    iget v2, p0, Lj3/b$a$a;->g:I

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    iget v0, p0, Lj3/b$a$a;->f:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lj3/b$a$a;->c()V

    iget v0, p0, Lj3/b$a$a;->f:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lj3/b$a$a;->f:I

    iput v0, p0, Lj3/b$a$a;->g:I

    iget-object v0, p0, Lj3/b$a$a;->e:Lj3/b$a;

    invoke-static {v0}, Lj3/b$a;->u(Lj3/b$a;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lj3/b$a$a;->e:Lj3/b$a;

    invoke-static {v1}, Lj3/b$a;->x(Lj3/b$a;)I

    move-result v1

    iget v2, p0, Lj3/b$a$a;->g:I

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    iget v0, p0, Lj3/b$a$a;->f:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 3

    invoke-virtual {p0}, Lj3/b$a$a;->c()V

    iget v0, p0, Lj3/b$a$a;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lj3/b$a$a;->e:Lj3/b$a;

    invoke-virtual {v2, v0}, Li3/e;->remove(I)Ljava/lang/Object;

    iget v0, p0, Lj3/b$a$a;->g:I

    iput v0, p0, Lj3/b$a$a;->f:I

    iput v1, p0, Lj3/b$a$a;->g:I

    iget-object v0, p0, Lj3/b$a$a;->e:Lj3/b$a;

    invoke-static {v0}, Lj3/b$a;->w(Lj3/b$a;)I

    move-result v0

    iput v0, p0, Lj3/b$a$a;->h:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call next() or previous() before removing element from the iterator."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lj3/b$a$a;->c()V

    iget v0, p0, Lj3/b$a$a;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lj3/b$a$a;->e:Lj3/b$a;

    invoke-virtual {v1, v0, p1}, Lj3/b$a;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Call next() or previous() before replacing element from the iterator."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
