.class public abstract Li3/e;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge remove(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Li3/e;->t(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract s()I
.end method

.method public final bridge size()I
    .locals 1

    invoke-virtual {p0}, Li3/e;->s()I

    move-result v0

    return v0
.end method

.method public abstract t(I)Ljava/lang/Object;
.end method
