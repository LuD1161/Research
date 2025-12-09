.class public final LS1/a$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LS1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:Ly1/a;

.field public b:Ly1/a;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ly1/a;

    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v1, p1}, Ly1/a;-><init>(II)V

    iput-object v0, p0, LS1/a$d;->a:Ly1/a;

    if-eqz p2, :cond_0

    new-instance p1, Ly1/a;

    iget v0, p2, Landroid/hardware/Camera$Size;->width:I

    iget p2, p2, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {p1, v0, p2}, Ly1/a;-><init>(II)V

    iput-object p1, p0, LS1/a$d;->b:Ly1/a;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ly1/a;
    .locals 1

    iget-object v0, p0, LS1/a$d;->a:Ly1/a;

    return-object v0
.end method

.method public final b()Ly1/a;
    .locals 1

    iget-object v0, p0, LS1/a$d;->b:Ly1/a;

    return-object v0
.end method
