.class public La3/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX2/m$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La3/a;-><init>(La3/a$c;LX2/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La3/a;


# direct methods
.method public constructor <init>(La3/a;)V
    .locals 0

    iput-object p1, p0, La3/a$a;->a:La3/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, La3/a$a;->a:La3/a;

    invoke-static {v0}, La3/a;->b(La3/a;)La3/a$c;

    move-result-object v0

    iget-object v1, p0, La3/a$a;->a:La3/a;

    invoke-static {v1, p1}, La3/a;->a(La3/a;Ljava/lang/String;)Landroid/view/PointerIcon;

    move-result-object p1

    invoke-interface {v0, p1}, La3/a$c;->setPointerIcon(Landroid/view/PointerIcon;)V

    return-void
.end method
