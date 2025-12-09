.class public LS1/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LS1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:LS1/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LS1/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LS1/c;-><init>(LS1/h;)V

    iput-object v0, p0, LS1/c$a;->a:LS1/c;

    return-void
.end method


# virtual methods
.method public a()LS1/c;
    .locals 2

    iget-object v0, p0, LS1/c$a;->a:LS1/c;

    invoke-static {v0}, LS1/c;->e(LS1/c;)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, LS1/c$a;->a:LS1/c;

    invoke-static {v0}, LS1/c;->g(LS1/c;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LS1/c$a;->a:LS1/c;

    invoke-static {v0}, LS1/c;->h(LS1/c;)LS1/c$c;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing image data.  Call either setBitmap or setImageData to specify the image"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, LS1/c$a;->a:LS1/c;

    return-object v0
.end method

.method public b(I)LS1/c$a;
    .locals 1

    iget-object v0, p0, LS1/c$a;->a:LS1/c;

    invoke-virtual {v0}, LS1/c;->c()LS1/c$b;

    move-result-object v0

    invoke-static {v0, p1}, LS1/c$b;->l(LS1/c$b;I)I

    return-object p0
.end method

.method public c(Ljava/nio/ByteBuffer;III)LS1/c$a;
    .locals 2

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    mul-int v1, p2, p3

    if-lt v0, v1, :cond_2

    const/16 v0, 0x10

    if-eq p4, v0, :cond_1

    const/16 v0, 0x11

    if-eq p4, v0, :cond_1

    const v0, 0x32315659

    if-ne p4, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 p3, 0x25

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Unsupported image format: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, LS1/c$a;->a:LS1/c;

    invoke-static {v0, p1}, LS1/c;->f(LS1/c;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object p1, p0, LS1/c$a;->a:LS1/c;

    invoke-virtual {p1}, LS1/c;->c()LS1/c$b;

    move-result-object p1

    invoke-static {p1, p2}, LS1/c$b;->g(LS1/c$b;I)I

    invoke-static {p1, p3}, LS1/c$b;->j(LS1/c$b;I)I

    invoke-static {p1, p4}, LS1/c$b;->k(LS1/c$b;I)I

    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid image data size."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null image data supplied."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(I)LS1/c$a;
    .locals 1

    iget-object v0, p0, LS1/c$a;->a:LS1/c;

    invoke-virtual {v0}, LS1/c;->c()LS1/c$b;

    move-result-object v0

    invoke-static {v0, p1}, LS1/c$b;->m(LS1/c$b;I)I

    return-object p0
.end method

.method public e(J)LS1/c$a;
    .locals 1

    iget-object v0, p0, LS1/c$a;->a:LS1/c;

    invoke-virtual {v0}, LS1/c;->c()LS1/c$b;

    move-result-object v0

    invoke-static {v0, p1, p2}, LS1/c$b;->h(LS1/c$b;J)J

    return-object p0
.end method
