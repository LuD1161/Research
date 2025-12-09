.class public Li3/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Li3/c;


# direct methods
.method public constructor <init>(Li3/c;)V
    .locals 0

    iput-object p1, p0, Li3/c$b;->f:Li3/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()I
    .locals 1

    iget v0, p0, Li3/c$b;->e:I

    return v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Li3/c$b;->e:I

    return-void
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Li3/c$b;->e:I

    iget-object v1, p0, Li3/c$b;->f:Li3/c;

    invoke-virtual {v1}, Li3/b;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Li3/c$b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li3/c$b;->f:Li3/c;

    iget v1, p0, Li3/c$b;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Li3/c$b;->e:I

    invoke-virtual {v0, v1}, Li3/c;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
