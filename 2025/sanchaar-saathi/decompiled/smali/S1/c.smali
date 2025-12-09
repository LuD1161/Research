.class public LS1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LS1/c$c;,
        LS1/c$b;,
        LS1/c$a;
    }
.end annotation


# instance fields
.field public final a:LS1/c$b;

.field public b:Ljava/nio/ByteBuffer;

.field public c:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LS1/c$b;

    invoke-direct {v0}, LS1/c$b;-><init>()V

    iput-object v0, p0, LS1/c;->a:LS1/c$b;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, LS1/c;->b:Ljava/nio/ByteBuffer;

    .line 4
    iput-object v0, p0, LS1/c;->c:Landroid/graphics/Bitmap;

    return-void
.end method

.method public synthetic constructor <init>(LS1/h;)V
    .locals 0

    .line 5
    invoke-direct {p0}, LS1/c;-><init>()V

    return-void
.end method

.method public static synthetic e(LS1/c;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, LS1/c;->b:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static synthetic f(LS1/c;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    iput-object p1, p0, LS1/c;->b:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public static synthetic g(LS1/c;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, LS1/c;->c:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic h(LS1/c;)LS1/c$c;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, LS1/c;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public b()Ljava/nio/ByteBuffer;
    .locals 10

    iget-object v0, p0, LS1/c;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v0, p0, LS1/c;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int v0, v7, v8

    new-array v9, v0, [I

    iget-object v1, p0, LS1/c;->c:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v2, v9

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, v9, v2

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3e991687    # 0.299f

    mul-float/2addr v3, v4

    aget v4, v9, v2

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f1645a2    # 0.587f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    aget v4, v9, v2

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3de978d5    # 0.114f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, LS1/c;->b:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public c()LS1/c$b;
    .locals 1

    iget-object v0, p0, LS1/c;->a:LS1/c$b;

    return-object v0
.end method

.method public d()[Landroid/media/Image$Plane;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
