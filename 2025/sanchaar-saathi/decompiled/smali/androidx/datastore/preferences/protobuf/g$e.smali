.class public final Landroidx/datastore/preferences/protobuf/g$e;
.super Landroidx/datastore/preferences/protobuf/g$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final j:I

.field public final k:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/g$i;-><init>([B)V

    add-int v0, p2, p3

    array-length p1, p1

    invoke-static {p2, v0, p1}, Landroidx/datastore/preferences/protobuf/g;->v(III)I

    iput p2, p0, Landroidx/datastore/preferences/protobuf/g$e;->j:I

    iput p3, p0, Landroidx/datastore/preferences/protobuf/g$e;->k:I

    return-void
.end method


# virtual methods
.method public A(I)B
    .locals 2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/g$i;->i:[B

    iget v1, p0, Landroidx/datastore/preferences/protobuf/g$e;->j:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public M()I
    .locals 1

    iget v0, p0, Landroidx/datastore/preferences/protobuf/g$e;->j:I

    return v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Landroidx/datastore/preferences/protobuf/g$e;->k:I

    return v0
.end method

.method public t(I)B
    .locals 2

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/g$e;->size()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/g;->u(II)V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/g$i;->i:[B

    iget v1, p0, Landroidx/datastore/preferences/protobuf/g$e;->j:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public z([BIII)V
    .locals 2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/g$i;->i:[B

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/g$e;->M()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {v0, v1, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
