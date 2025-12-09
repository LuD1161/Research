.class public LP/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP/f;->e(Landroid/content/Context;LP/e;LP/a;II)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:LP/e;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;LP/e;I)V
    .locals 0

    iput-object p1, p0, LP/f$a;->a:Ljava/lang/String;

    iput-object p2, p0, LP/f$a;->b:Landroid/content/Context;

    iput-object p3, p0, LP/f$a;->c:LP/e;

    iput p4, p0, LP/f$a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LP/f$e;
    .locals 4

    iget-object v0, p0, LP/f$a;->a:Ljava/lang/String;

    iget-object v1, p0, LP/f$a;->b:Landroid/content/Context;

    iget-object v2, p0, LP/f$a;->c:LP/e;

    iget v3, p0, LP/f$a;->d:I

    invoke-static {v0, v1, v2, v3}, LP/f;->c(Ljava/lang/String;Landroid/content/Context;LP/e;I)LP/f$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LP/f$a;->a()LP/f$e;

    move-result-object v0

    return-object v0
.end method
