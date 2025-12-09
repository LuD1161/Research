.class public Li0/I$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li0/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li0/I;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li0/I;


# direct methods
.method public constructor <init>(Li0/I;)V
    .locals 0

    iput-object p1, p0, Li0/I$e;->a:Li0/I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Li0/Z;
    .locals 1

    new-instance v0, Li0/f;

    invoke-direct {v0, p1}, Li0/f;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method
