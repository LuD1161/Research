.class public Le1/a;
.super Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay$a;
.source "SourceFile"


# static fields
.field public static final f:[I

.field public static g:I


# instance fields
.field public b:I

.field public c:Landroid/graphics/Paint;

.field public d:Landroid/graphics/Paint;

.field public volatile e:LT1/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v0, -0xff0001

    const v1, -0xff0100

    const v2, -0xffff01

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Le1/a;->f:[I

    const/4 v0, 0x0

    sput v0, Le1/a;->g:I

    return-void
.end method

.method public constructor <init>(Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay$a;-><init>(Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;)V

    sget p1, Le1/a;->g:I

    add-int/lit8 p1, p1, 0x1

    sget-object v0, Le1/a;->f:[I

    array-length v1, v0

    rem-int/2addr p1, v1

    sput p1, Le1/a;->g:I

    aget p1, v0, p1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Le1/a;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Le1/a;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Le1/a;->c:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Le1/a;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Le1/a;->d:Landroid/graphics/Paint;

    const/high16 v0, 0x42100000    # 36.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method public b()LT1/a;
    .locals 1

    iget-object v0, p0, Le1/a;->e:LT1/a;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Le1/a;->b:I

    return-void
.end method

.method public d(LT1/a;)V
    .locals 0

    iput-object p1, p0, Le1/a;->e:LT1/a;

    invoke-virtual {p0}, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay$a;->a()V

    return-void
.end method
