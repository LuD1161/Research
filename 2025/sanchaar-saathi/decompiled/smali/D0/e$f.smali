.class public LD0/e$f;
.super LD0/l$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LD0/e;->u(Ljava/lang/Object;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/graphics/Rect;

.field public final synthetic b:LD0/e;


# direct methods
.method public constructor <init>(LD0/e;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, LD0/e$f;->b:LD0/e;

    iput-object p2, p0, LD0/e$f;->a:Landroid/graphics/Rect;

    invoke-direct {p0}, LD0/l$e;-><init>()V

    return-void
.end method
