.class public Lg2/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li2/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg2/a;->I(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg2/a;


# direct methods
.method public constructor <init>(Lg2/a;)V
    .locals 0

    iput-object p1, p0, Lg2/a$a;->a:Lg2/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lg2/a$a;->a:Lg2/a;

    invoke-virtual {v0, p1}, Lg2/a;->M(Landroid/graphics/Typeface;)V

    return-void
.end method
