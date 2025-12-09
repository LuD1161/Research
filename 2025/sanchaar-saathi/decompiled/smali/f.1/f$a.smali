.class public final Lf/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/content/IntentSender;

.field public b:Landroid/content/Intent;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Landroid/content/IntentSender;)V
    .locals 1

    const-string v0, "intentSender"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/f$a;->a:Landroid/content/IntentSender;

    return-void
.end method


# virtual methods
.method public final a()Lf/f;
    .locals 5

    new-instance v0, Lf/f;

    iget-object v1, p0, Lf/f$a;->a:Landroid/content/IntentSender;

    iget-object v2, p0, Lf/f$a;->b:Landroid/content/Intent;

    iget v3, p0, Lf/f$a;->c:I

    iget v4, p0, Lf/f$a;->d:I

    invoke-direct {v0, v1, v2, v3, v4}, Lf/f;-><init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V

    return-object v0
.end method

.method public final b(Landroid/content/Intent;)Lf/f$a;
    .locals 0

    iput-object p1, p0, Lf/f$a;->b:Landroid/content/Intent;

    return-object p0
.end method

.method public final c(II)Lf/f$a;
    .locals 0

    iput p1, p0, Lf/f$a;->d:I

    iput p2, p0, Lf/f$a;->c:I

    return-object p0
.end method
