.class public Lio/flutter/view/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX2/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/flutter/view/d;


# direct methods
.method public constructor <init>(Lio/flutter/view/d;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/view/d$a;->a:Lio/flutter/view/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/view/d$a;->a:Lio/flutter/view/d;

    invoke-static {v0}, Lio/flutter/view/d;->c(Lio/flutter/view/d;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Ljava/nio/ByteBuffer;[Ljava/lang/String;[Ljava/nio/ByteBuffer;)V
    .locals 4

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p3, v1

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/flutter/view/d$a;->a:Lio/flutter/view/d;

    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/view/d;->b0(Ljava/nio/ByteBuffer;[Ljava/lang/String;[Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public c(Ljava/nio/ByteBuffer;[Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lio/flutter/view/d$a;->a:Lio/flutter/view/d;

    invoke-virtual {v0, p1, p2}, Lio/flutter/view/d;->a0(Ljava/nio/ByteBuffer;[Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public e(I)V
    .locals 2

    iget-object v0, p0, Lio/flutter/view/d$a;->a:Lio/flutter/view/d;

    const/16 v1, 0x8

    invoke-virtual {v0, p1, v1}, Lio/flutter/view/d;->R(II)V

    return-void
.end method

.method public f(I)V
    .locals 2

    iget-object v0, p0, Lio/flutter/view/d$a;->a:Lio/flutter/view/d;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lio/flutter/view/d;->R(II)V

    return-void
.end method

.method public g(I)V
    .locals 2

    iget-object v0, p0, Lio/flutter/view/d$a;->a:Lio/flutter/view/d;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lio/flutter/view/d;->R(II)V

    return-void
.end method
