.class public Ll2/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/k$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll2/g;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:F

.field public final synthetic b:Ll2/g;


# direct methods
.method public constructor <init>(Ll2/g;F)V
    .locals 0

    iput-object p1, p0, Ll2/g$b;->b:Ll2/g;

    iput p2, p0, Ll2/g$b;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll2/c;)Ll2/c;
    .locals 2

    instance-of v0, p1, Ll2/i;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ll2/b;

    iget v1, p0, Ll2/g$b;->a:F

    invoke-direct {v0, v1, p1}, Ll2/b;-><init>(FLl2/c;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
