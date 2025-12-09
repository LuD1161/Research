.class public Le1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS1/e$b;


# instance fields
.field public a:Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;

.field public b:Landroid/content/Context;

.field public c:I


# direct methods
.method public constructor <init>(Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le1/b;->a:Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;

    iput-object p2, p0, Le1/b;->b:Landroid/content/Context;

    iput p3, p0, Le1/b;->c:I

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)LS1/f;
    .locals 0

    check-cast p1, LT1/a;

    invoke-virtual {p0, p1}, Le1/b;->b(LT1/a;)LS1/f;

    move-result-object p1

    return-object p1
.end method

.method public b(LT1/a;)LS1/f;
    .locals 4

    new-instance p1, Le1/a;

    iget-object v0, p0, Le1/b;->a:Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;

    invoke-direct {p1, v0}, Le1/a;-><init>(Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;)V

    new-instance v0, Lcom/amolg/flutterbarcodescanner/a;

    iget-object v1, p0, Le1/b;->a:Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;

    iget-object v2, p0, Le1/b;->b:Landroid/content/Context;

    iget v3, p0, Le1/b;->c:I

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/amolg/flutterbarcodescanner/a;-><init>(Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;Le1/a;Landroid/content/Context;I)V

    return-object v0
.end method
