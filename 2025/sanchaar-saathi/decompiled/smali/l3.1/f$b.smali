.class public final Ll3/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll3/i$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll3/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final synthetic e:Ll3/f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll3/f$b;

    invoke-direct {v0}, Ll3/f$b;-><init>()V

    sput-object v0, Ll3/f$b;->e:Ll3/f$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
